class CategoryName < ActiveHash::Base
 
#カラムをgenre_idにする理由は、ジャンルのidをarticlesテーブルに保存するためです。
#そうすることで、idに紐付いているジャンルの情報を取得できます。
  self.data = [
              {id: 0, name: '---'},
              {id: 1, name: 'レディース'},
              {id: 2, name: 'メンズ'}, 
              {id: 3, name: 'ベビー・キッズ'},
              {id: 4, name: 'インテリア・住まい・小物'}, 
              {id: 5, name: '本・音楽・ゲーム'},
              {id: 6, name: 'おもちゃ・ホビー・グッズ'},
              {id: 7, name: '家電・スマホ・カメラ'},
              {id: 8, name: 'スポーツ・レジャー'}, 
              {id: 9, name: 'ハンドメイド'}, 
              {id: 10, name: 'その他'}, 
              ]
end

#ActiveHash::Base
#ActiveHash::Baseは、ActiveRecordと同様のメソッドが使用できるようになります。
#ActiveHash::Baseを継承することで、Genreモデルに定義した
#オブジェクトに対してActiveRecordのメソッドが使用できるようになります。