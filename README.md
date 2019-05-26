# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* ハマりポイント

ストロングパラメーターの設定
questions_attributesのidもpermitしないと更新したときに、既存＋更新内容の２パターンが登録される。

def survey_params
  params.require(:survey).permit(:name, questions_attributes: [:id,:content])
end
