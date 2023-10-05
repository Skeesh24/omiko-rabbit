FROM rabbitmq:3.11

# Expose the necessary ports
EXPOSE 5672 15672

# Set the default command to start RabbitMQ
CMD ["rabbitmq-server"]

# Optional: add a healthcheck to ensure RabbitMQ is running properly
HEALTHCHECK CMD rabbitmqctl status || exit 1