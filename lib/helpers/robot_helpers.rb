module RobotHelpers
  def robot_image(selfie_url, name = nil)
    if (name)
      "<img src=\"#{selfie_url}\">"
    else
      "<img src=\"#{selfie_url}\" alt=\"#{name}\">"
    end
  end
end