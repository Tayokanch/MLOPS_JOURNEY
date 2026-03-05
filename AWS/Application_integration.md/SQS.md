1. `Amazon Simple Queue Service (SQS)`

**Amazon SQS** is a fully managed **message queue service** that sits between applications or system components.

It helps **manage communication between systems by queueing messages until they are processed**.

Instead of sending requests directly between systems, messages are placed in a **queue** where they wait until a worker or backend service processes them.

## Typical Use Case

Imagine a system receiving a **large spike in traffic**.

`Example`: 

- Frontend system sends 1,000,000 orders
- Backend system can only process 1,000 at a time

**Without a SQS**:
  - The backend system could become **overwhelmed or crash**.

**With SQS**:
```
Frontend System
↓
SQS Queue
↓
Backend Workers process messages gradually 


## How It Works

1. The **frontend application** sends messages (orders, tasks, events) to SQS.
2. Messages are **stored in the queue**.
3. Backend services **pull messages from the queue** when they are ready to process them.

Example flow:

Frontend Application
↓
SQS Queue
↓
Backend Order Processing Service

If many orders arrive at once:

- They are **queued**
- Processed **one at a time or in batches**
- Prevent the backend system from being overloaded

## Key Idea

Messages remain in the queue **until the backend system processes them**.

This provides:

- **Reliability**
- **Traffic buffering**
- **Decoupling between services**
- **Better scalability**

---

# Quick Comparison

| Feature | SNS | SQS |
|------|------|------|
| Purpose | Broadcast messages | Queue messages |
| Communication Style | Publish → Multiple subscribers | Producer → Queue → Consumer |
| Main Use | Notifications & event distribution | Task processing & traffic buffering |
| Message Handling | Sent instantly to subscribers | Stored until processed |

---

# Using SNS and SQS Together

In many architectures, **SNS and SQS are used together**.


