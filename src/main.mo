import Hmac "src/Hmac";

let hmacSha256 : Hmac.Hmac = Hmac.sha256(key);
hmacSha256.write([ /* Nat8 data */ ]);
var result : [Nat8] = hmacSha256.sum();
