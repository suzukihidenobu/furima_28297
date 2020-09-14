const pay = () => {
  
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY); // 環境変数を読み込む
  console.log()
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => { // イベント発火
    e.preventDefault();
//  今回は「pay」という変数名で定義します。
// 「charge-form」内のsubmitが実行されると、イベントが発火されるようにします。
// 「charge-form」とは、カード登録の入力フォームに付与されているid名のことです。

      // カード情報の取得先
  const formResult = document.getElementById("charge-form");
  const formData = new FormData(formResult);

  const purchases = { // カードオブジェクトを生成
      number: formData.get("card-number"),              // カード番号
      cvc: formData.get("card-cvc"),                    // カード裏面の3桁の数字
      exp_month: formData.get("card-exp-month"),        // 有効期限の月
      exp_year: `20${formData.get("card-exp-year")}`,   // 有効期限の年
    };
// 「exp_year」だけ「20〜」となっているのは、入力フォームでは有効期限の年が「20,21,22, ...」
// と下2桁だけの選択となっているので、頭に「20」と付けることで「20〇〇年」となります。
// console.log(purchases)
    Payjp.createToken(purchases, (status, response) => {  
// 「もし通信が成功したら」という条件から始まります。
      if (status === 200) {
        
        // console.log(response)

        const token = response.id; // 「token」「renderDom」という定数を順に生成します。
        const renderDom = document.getElementById("charge-form");   //idを元に要素を取得
        const tokenObj = `<input value=${token} type="hidden" name='token'>`;   //paramsの中にトークンを含める
        renderDom.insertAdjacentHTML("beforeend", tokenObj);  //フォームの一番最後に要素を追加
// 「tokenObj」ですが、これはトークンの情報を含んでいます。こちらはブラウザ上に表示する必要性がないので、「type=”hidden”」としています。
// 最後に、「insertAdjacentHTML」でフォームの一番最後にtokenObjを追加します。
// なぜフォームの一番最後かというと、「renderDom」で “charge-form” というidの要素、つまりカード登録時の入力フォームを指しているからです。
// この ”beforeend” が ”最後よりも手前に” を意味します。

        console.log(purchases)

      
        document.getElementById("card-number").removeAttribute("name");
        document.getElementById("card-cvc").removeAttribute("name");
        document.getElementById("card-exp-month").removeAttribute("name");
        document.getElementById("card-exp-year").removeAttribute("name");
// カード情報をparamsに含んでしまうと、データベースにカード情報がそのまま保存されてしまいます。
// このような仕様は法律で禁止されているので、paramsの中からカード情報を削除しましょう。name属性を指定して削除することで、入力されたカード情報の各値をparamsに含まれないようにします。
        document.getElementById("charge-form").submit();
        document.getElementById("charge-form").reset(); 
        // PAY.JPから送られたトークンをコントローラーに送信することが出来ます。（42行目）
        // 送信後は、フォームの情報はリセットしましょう。（43行目）
      }   
    });
  });
 };

 window.addEventListener("load", pay);
// これまで記述した関数は全て「定数pay」に代入されます。
// したがって、こちらが起動するようにします。（51行目）