require 'ostruct'

class Deployment
  def status
    "other"
  end
end

def check_deployment
  while true do
    deployment = Deployment.new
    when 'Aborted' then return false
    when 'Failed' then return false
    when 'Succeeded' then return true
    else print "."; sleep 3
  end
rescue Exception => e
  puts e
  return false
end

result = check_deployment
exit result
