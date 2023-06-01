import Hmac "Hmac";

// let key : [Nat8] = [ /* Key bytes */ ];
let key : [Nat8] = [ "abc" ];

let hmacSha256 : Hmac.Hmac = Hmac.sha256(key);
//hmacSha256.write([ /* Nat8 data */ ]);
hmacSha256.write([ "123" ]);
var result : [Nat8] = hmacSha256.sum();
