
`Amazon Simple Notification Service (SNS)`

**Amazon SNS** is used for **Application-to-Application** and **Application-to-Customer** communication.

It allows an application to **publish a message once and send it to multiple recipients at the same time**.

This works using a **publish–subscribe (pub/sub) model**, where a message is published to an **SNS Topic**, and multiple subscribers receive the message.

## Typical Use Case

A common scenario is when an application generates an event and that event needs to notify multiple systems or users.

Example:

An **e-commerce application** processes a customer's purchase.
```
Customer purchases item
↓
Application publishes message
↓
SNS Topic
↓
Multiple Subscribers receive the message

### Possible Subscribers

- Customer receives **email confirmation**
- Customer receives **SMS notification**
- Backend service receives message to **process the order**
- Analytics system receives message to **track sales**

Example: 
Customer purchases item
↓
SNS Topic
↓ ↓
Email Order Processing Service to User (/process-order)
```

## When to Use SNS

SNS is useful when:

- An application needs to **send notifications to customers**
- A system needs to **broadcast a single message to multiple applications**
- You need to send messages via:
  - Email
  - SMS
  - Mobile push notifications
  - Other applications or services

In simple terms:

**SNS duplicates and distributes messages to multiple recipients.**