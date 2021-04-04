// Auto-generated. Do not edit!

// (in-package rover_computer.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class angle_to_rotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vec = null;
    }
    else {
      if (initObj.hasOwnProperty('vec')) {
        this.vec = initObj.vec
      }
      else {
        this.vec = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type angle_to_rotRequest
    // Serialize message field [vec]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type angle_to_rotRequest
    let len;
    let data = new angle_to_rotRequest(null);
    // Deserialize message field [vec]
    data.vec = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rover_computer/angle_to_rotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5466fc697deeda647d8a50c8f0a1b4ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 vec
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new angle_to_rotRequest(null);
    if (msg.vec !== undefined) {
      resolved.vec = geometry_msgs.msg.Vector3.Resolve(msg.vec)
    }
    else {
      resolved.vec = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

class angle_to_rotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type angle_to_rotResponse
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type angle_to_rotResponse
    let len;
    let data = new angle_to_rotResponse(null);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rover_computer/angle_to_rotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4edb55038e2b888976a0c0c56935341c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 angle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new angle_to_rotResponse(null);
    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: angle_to_rotRequest,
  Response: angle_to_rotResponse,
  md5sum() { return 'c9b6a830186d1c75fbda1fb5dd9334cf'; },
  datatype() { return 'rover_computer/angle_to_rot'; }
};
