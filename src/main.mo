import Hmac "Hmac";
actor {
  
  public func callHmac() : async () {

    // let key : [Nat8] = [ /* Key bytes */ ];
    let key : [Nat8] = [ 25 ];

    let hmacSha256 : Hmac.Hmac = Hmac.sha256(key);
    //hmacSha256.write([ /* Nat8 data */ ]);
    hmacSha256.write([ 123 ]);
    var result : [Nat8] = hmacSha256.sum();   
    
  };
};
