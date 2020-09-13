require 'rails_helper'
# requireメソッド
# 送信されたパラメーターの情報を持つparamsが、使用できるメソッドです。
# rails_helper
# RailsにおいてRSpecを利用する際に、共通の設定を書いておくファイルです。各テスト用ファイルでこちらのファイルを読み込むことで、共通の設定やメソッドを適用します。

このファイル（rails_helper.rb）は、specディレクトリ配下に存在しています。

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
