class DeliveryBurden < ActiveHash::Base
  # カラムをgenre_idにする理由は、ジャンルのidをarticlesテーブルに保存するためです。
  # そうすることで、idに紐付いているジャンルの情報を取得できます。

  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '着払い(購入者負担)' },
    { id: 2, name: '送料込み(出品者負担)' }
  ]
end

# ActiveHash::Base
# ActiveHash::Baseは、ActiveRecordと同様のメソッドが使用できるようになります。
# ActiveHash::Baseを継承することで、Genreモデルに定義した
# オブジェクトに対してActiveRecordのメソッドが使用できるようになります。
