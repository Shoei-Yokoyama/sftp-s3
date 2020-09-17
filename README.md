# sftp-s3

## 動作
SFTPサーバーとして振る舞い、受信したファイルをAWS S3バケットへ転送します。

## 使い方
- 環境変数に以下の変数をセットします。実行環境の環境変数を変えたくない場合は、.envファイルを作成して記載します。
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY
  - AWS_BUCKET_NAME
    - 転送先のS3バケット
- build.shを実行し、Dockerイメージをつくります。
- run.shを実行してコンテナ起動します。
- 終了時はdocker-compose down

## メンテナンス情報
- 接続ユーザー名の変更時
  - resource/upload.incron
  - resource/users.conf
- 接続パスワードの変更時
  - resource/users.conf
