const API = '';
const promise = fetch(API);
console.log(promise)
promise.then(
    (data) => console.log("data.......",data)
)