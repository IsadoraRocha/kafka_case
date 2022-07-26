class KafkaTest
  # require "kafka"
  def read_message
    kafka = Kafka.new(["localhost:9092"])

    # Consumers with the same group id will form a Consumer Group together.
    consumer = kafka.consumer(group_id: "my-consumer")

    # It's possible to subscribe to multiple topics by calling `subscribe`
    # repeatedly.
    consumer.subscribe("tcc_topic")
    # Stop the consumer when the SIGTERM signal is sent to the process.
    # It's better to shut down gracefully than to kill the process.

    # trap("TERM") { consumer.stop }
    time_start = Time.new
    # This will loop indefinitely, yielding each message in turn.
    consumer.each_message do |message|
      message = message.value
      puts message
      if message.eql?($message)
        return true, message
      elsif Time.new - time_start > 3
        consumer.stop
        return false, message
      end
    end
  end
end
