class ShippingDays < ActiveHash::Base
  
  
#カラムをgenre_idにする理由は、ジャンルのidをarticlesテーブルに保存するためです。
#そうすることで、idに紐付いているジャンルの情報を取得できます。
  self.data = [
              {id: 0, name: '---'},
              {id: 1, name: '1~2日で発送'},
              {id: 2, name: '2~3日で発送'}, 
              {id: 3, name: '4~7日で発送'}, 
              ]
end


#ActiveHash::Base
#ActiveHash::Baseは、ActiveRecordと同様のメソッドが使用できるようになります。
#ActiveHash::Baseを継承することで、Genreモデルに定義した
#オブジェクトに対してActiveRecordのメソッドが使用できるようになります。

