# users

## association
- has_many :massages
- has_many :groups
- has_many :members

## table
- name :string, null: false
- email :string, null: false
- pass :string, null: false
  - add_index :users, :email, unique: ture




# groups

## association
- has_many :users
- has_many :massages
- has_many :members

## table
- name :string, null: false




# members

## association
- belongs_to :group
- belongs_to :user

## table
- references :user, foreign_key: true
- references :group, foreign_key: true




# massages

## association
- belongs_to :user
- belongs_to :group

## table
- body :text, null: false
- image :string
- references :user, foreign_key: true
- references :group, foreign_key: true