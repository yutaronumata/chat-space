# users

## association
- has_many :massages
- belongs_to :groups

## table
- t.string :name, null: false
- t.string :email, null: false
- t.string :pass, null: false
  - add_index :users, :email, unique: ture




# groups

## association
- has_many :users
- has_many :messagess

## table
- t.string :name null: false




# members

## association
- belongs_to :group
- belongs_to :user

## table
- t.references :user, foreign_key: true
- t.references :group, foreign_key: true




# massages

## association
belongs_to :user
belongs_to :group

## table
- t.text :body, null: false
- t.string :image
- t.references :user, foreign_key: true
- t.references :group, foreign_key: true