# Business Use Case

Before an important purchase order is released, there are many checks that should be done to minimize the business risk. But what about after the release of such an order, or of a less important order that has been automatically released? There may be departments that would want to react to the release of an order that is relevant to them. For example, if some attribute in the purchase order exceeds a specified threshold or matches a particular value, a timely response might be in order. 

In this scenario, we automatically start a parallel process to allow an external team to know that a purchase order has been created and to allow that team to do its own checks and provide the feedback directly into the purchase order.

Here we combine an on-stack extension using a public extension point with side-by-side extension that consumes events and makes remote API calls. The side-by-side allows for the participation in the process of persons without a user in the S/4HANA system.

## Next Step

[Solution Architecture](./architecture.md)