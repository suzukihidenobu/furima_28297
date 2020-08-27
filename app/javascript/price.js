// function memo() {
//   const submit = document.getElementById("item-price");
//   submit.addEventListener("onSelect", (e) => {
//     console.log("change");
//     const formData = new FormData(document.getElementById("form"));
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", "/posts", true);
//     XHR.responseType = "json";
//     XHR.send(formData);
//     XHR.onload = () => {
//       if (XHR.status != 200) {
//         alert(`Error ${XHR.status}: ${XHR.statusText}`);
//         return null;
//       }
//       const item = XHR.response.post;
//       const list = document.getElementById("list");
//       const formText = document.getElementById("content");
//       const HTML = `
//         <div class="post" data-id=${item.id}>
//           <div class="post-date">
//             投稿日時：${item.created_at}
//           </div>
//           <div class="post-content">
//           ${item.content}
//           </div>
//         </div>`;
//       list.insertAdjacentHTML("afterend", HTML);
//       formText.value = "";
//     };
//   });
// }

function profit(){
  const item_price = document.getElementById("item-price");

  item_price.addEventListener("change", function(){
    let profit = item_price.value;
    let fee = profit * 0.1
    console.log(fee)
  });
};
window.addEventListener("load", profit);



// 0:windowがloadされた時にイベント発火するようにする
// 1:入力欄のid情報を取得する
// 2:入力欄に値が入力された時のイベントを設置する
// 3:入力の値を取得する
// 4:入力の値の10%の値を手数料として変数に格納する
// 5:入力値と手数料を引いた数値を販売利益として変数に格納する
// 6:販売手数料の入力欄のidを取得して変数に格納する
// 7:売買利益の入力欄のidを取得して変数に格納する
// 8:6のtextContentに4を代入する
// 9:7のtextContentに5を代入する