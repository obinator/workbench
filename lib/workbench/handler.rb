module Workbench
  module Handler

    def self.included( base )
      base.extend( ClassMethods )
    end

    module ClassMethods

      def data( data_class )
        @data_class = data_class
      end

      def data_class
        @data_class
      end

      def handle( message, &block )
        @handlers ||= {}
        @handlers[ message ] = block
      end

      def handlers
        @handlers
      end

      def started_by( *messages )
        @starting_messages ||= []
        messages.each do |message|
          @starting_messages << message
        end
      end

    end

    class DataContext

      attr_accessor :handler_context

      def initialize( handler_context )
        @handler_context = handler_context
      end

      def copy( message, &block )

        fields_to_record = []

        data_copy_context = DataCopyContext.new fields_to_record
        data_copy_context.instance_exec nil, &block

        fields_to_record.each do |field|
          handler_context.saga_data.instance_variable_set( "@#{field.to_s}", 
            message.instance_variable_get( "@#{field.to_s}" ) )
        end

        # handler_context.saga_data.instance_variables.each do |var|
        #   puts var.to_s + ": " + handler_context.saga_data.instance_variable_get( var ).to_s
        # end

      end

    end

    class DataCopyContext

      attr_accessor :fields

      def initialize( fields )
        @fields = fields
      end

      def record( symbol )
        @fields << symbol
      end

    end

    class HandlerContext

      attr_accessor :message
      attr_accessor :saga_data

      def initialize( data_class, message )
        @saga_data = data_class.new
        @message = message
      end

      def complete
        MessageReceipt.build message, self
      end

      def ready?
        true
      end

      def data
        DataContext.new self
      end

    end

    extend self

    def handle!( message )
      handler = self.class.handlers[ message.name.to_sym ]
      handler_context = HandlerContext.new self.class.data_class, message
      handler_context.instance_exec message, &handler
    end

    def handles?(message)
      self.class.handlers.has_key? message.name.to_sym
    end
  end
end
