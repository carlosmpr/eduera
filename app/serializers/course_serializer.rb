class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date


  def release_date
    object.created_at.strftime("%Y-%m-%d")
  end
end
