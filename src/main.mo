import Hmac "Hmac";
actor {
  
  public func callHmac() : async [Nat8] {

    // let key : [Nat8] = [ /* Key bytes */ ];
    let key : [Nat8] = [ 25 ];

    //let hmacSha256 : Hmac.Hmac = Hmac.sha256(key);
    //hmacSha256.write([ /* Nat8 data */ ]);
    //hmacSha256.write([ 123 ]);
    //let result : [Nat8] = hmacSha256.sum(); 
    //return result;  
    
    let hmacCustomDigest : Hmac.Hmac = Hmac.new(key, object {
  public let blockSize : Nat = 64;
  public func create() : Hmac.Digest = object {
    public func write(data : [Nat8]) { /* Process input */ };
    public func sum() : [Nat8] = [ /* Compute sum */ ];
  };
});
hmacCustomDigest.write([ /* Nat8 data */ ]);
result := hmacCustomDigest.sum();
return result; 
    
  };
};
