module ApplicationHelper
# These are the lat and long of swinburne.
  @@CreatedDate="31/08/2012"
  @@Version="0.1"
  def version
    "Version #{@@Version}, Created at #{@@CreatedDate}."
  end
end
