class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png], message: "must be a valid image format" },
                    size: { less_than: 5.kilobytes, message: "should be less than 5MB" }

  # 表示用のリサイズ済み画像を返す
  def display_image
    # image.variant(resize_to_limit: [300, 300])
    image # 環境の問題でリサイズが動作しないためそのまま帰す
  end
end
