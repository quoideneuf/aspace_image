SiteController.class_eval do

def index
Rails.logger.debug("plugin controller")

x=Dir["../assets/images/aspace_home/col-1/*.jpg"]
y=Dir["../assets/images/aspace_home/col-2/*.jpg"]
z=Dir["../assets/images/aspace_home/col-3/*.jpg"]

@img1=pickImage(x)
@img2=pickImage(y)
@img3=pickImage(z)
end

def pickImage(directory)
   dirSize=directory.length
   ranNum=0+rand(dirSize)
   fileName=directory[ranNum]
   return fileName
end

end
