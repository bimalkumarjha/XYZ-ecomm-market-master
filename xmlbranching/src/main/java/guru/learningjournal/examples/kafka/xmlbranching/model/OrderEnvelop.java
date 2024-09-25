package bimal.learning.examples.kafka.xmlbranching.model;

import bimal.learning.examples.kafka.model.Order;
import lombok.Data;

@Data
public class OrderEnvelop {
    String xmlOrderKey;
    String xmlOrderValue;

    String orderTag;
    Order validOrder;
}
