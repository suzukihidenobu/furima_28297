class Condition < ActiveHash::Base
  
  
#カラムをgenre_idにする理由は、ジャンルのidをarticlesテーブルに保存するためです。
#そうすることで、idに紐付いているジャンルの情報を取得できます。
  self.data = [
              {id: 0, name: '---'},
              {id: 1, name: '新品、未使用'},
              {id: 2, name: '未使用に近い'}, 
              {id: 3, name: '目立った傷や汚れなし'},
              {id: 4, name: 'やや傷や汚れあり'}, 
              {id: 5, name: '傷や汚れあり'},
              {id: 6, name: '全体的に状態が悪い'},
              ]
end

#ActiveHash::Base
#ActiveHash::Baseは、ActiveRecordと同様のメソッドが使用できるようになります。
#ActiveHash::Baseを継承することで、Genreモデルに定義した
#オブジェクトに対してActiveRecordのメソッドが使用できるようになります。