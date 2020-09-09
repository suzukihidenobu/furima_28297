
function profit(){
  const price = document.getElementById("item-price");

  price.addEventListener("change", function(){
    let profit = price.value;
    const tax = document.getElementById("add-tax-price");
    let fee = profit * 0.1
    tax.textContent = fee

    const tprofit = document.getElementById("profit");
    tprofit.textContent = profit - fee
    
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