#!/opt/homebrew/bin/zsh

# あえてbrew shellenvのevalを現在のbashでのみ再実行する
eval "$(/opt/homebrew/bin/brew shellenv)"
## 現在のbashでのみbisonパスを設定する
export PATH="$HOMEBREW_PREFIX/opt/bison/bin:$PATH"
## 現在のbashでのみLDFLAGSを上書きする
export LDFLAGS="-L$HOMEBREW_PREFIX/lib"

## 邪魔になりそうな環境変数を現在のbashでのみクリアする
export CPPFLAGS=""
export optflags=""
export OPENSSL_CFLAGS=""
export RUBY_CONFIGURE_OPTS=""

## 続けて以下のいずれかを実行

## Ruby 3.2の場合の例
# rbenv install 3.2.2
## Ruby 3.1の場合の例
# rbenv install 3.1.4
## Ruby 3.0の場合の例
# rbenv install 3.0.6
## Ruby 2.7の場合の例
rbenv install 2.7.6
