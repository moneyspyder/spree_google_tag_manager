module Spree

  module Google

    class Transaction

      attr_reader :order

      def initialize(order)
        @order = order
      end

      def data_layer
        {
          'transactionId' => transaction_id
        }
      end

      def transaction_id
        @order.number
      end

      def transaction_affiliation
        Spree::Store.current.name.gsub("'", '')
      end

      def transaction_total
        @order.total
      end

      def transaction_city
        @order.bill_address.city
      end

    end

  end

end