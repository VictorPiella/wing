bring cloud;

let bucket = new cloud.Bucket();
let api = new cloud.Api();


api.get("/test-get", inflight (req: cloud.ApiRequest): cloud.ApiResponse => {
  bucket.put("hello.txt", "Hello, GET!");
  return cloud.ApiResponse {
    status: 200,
    body: Json.stringify(req.query)
  };
});
