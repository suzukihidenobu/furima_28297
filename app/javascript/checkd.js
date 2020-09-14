function check() {
  const star = document.querySelectorAll(".post");
  star.forEach(function (post) { });
}
window.addEventListener("load", check);


// 要素1つずつに対して、「クリック」した際に動作する処理を記述します。まずは、forEachを記述して、それぞれの要素への処理を記述する場所を用意します。
// 次に処理としてaddEventListenerメソッドを使用し、引数にclickの指定をします。