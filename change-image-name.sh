#!/bin/sh
# ディレクトリ内の画像ファイルを任意の名前に変更する

# ディレクトリを指定
readonly TARGET_DIR=
cd $TARGET_DIR
readonly TARGET_FILES="./*"
# 変更後の名前を指定
# ex: hoge-hoge-
readonly NAME_TO_CHANGE=
counter=1

# ディレクトリ内の画像ファイル名を置換
for file in $TARGET_FILES; do
    # 確認する拡張子を増やす場合はここに条件を追加
    if [ ${file: -4} == ".jpg" -o ${file: -4} == ".png" ]; then

    # 拡張子を維持してファイル名を変更
    mv "${file}" "${NAME_TO_CHANGE}${counter}${file: -4}"
    counter=$(expr $counter + 1)
    fi
done