module.exports = {
  title: "Pimatic homekkit bridge config",
  type: "object",
  properties: {
    name:
      description: "The name of the homekit bridge that will be displayed"
      type: "string"
      default: "Pimatic HomeKit Bridge"
    pincode:
      description: "The pincode used to pair the homekit bridge"
      type: "string"
      default: "031-45-154"
    port:
      description: "The network port that the bridge is using"
      type: "integer"
      default: 51826
    devices:
      description: "extends the devices section with additional attributes"
      type: "array"
      default: []
      items:
        type: "object"
        properties:
          id:
            type: "string"
          service:
            description: "Associated service type"
            type: "string"
            enum: ["Lightbulb", "Fan", "None"]
            default: "None"
  }
};
