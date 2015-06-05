namespace :projects do
  desc "Set long/lat coords for all the projects without them"
  task :update_coordinates => :environment do
    projects = Project.where(longitude: nil, latitude: nil)
    projects.each do |p|
      p.geocode

      if p.save
        puts "#{p.name} was updated"
      else
        puts "There was an issue saving project #{p.name} with id #{p.id}"
      end
    end

  end


end

#rake projects:update_coordinates 
#in the console to update all the restaurants which are in the database and don't have any coordinates
