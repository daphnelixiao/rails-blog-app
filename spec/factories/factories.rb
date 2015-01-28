include ActionDispatch::TestProcess
FactoryGirl.define do
 
  factory :user do  	
  	first_name 'Jane'
  	last_name 'Doe'
    email 'test@example.com'
    password 'f4k3p455w0rd'
    avatar { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
  end

  factory :post do  	
  	title "An awesome titel"
  	intro 'More text'
    body 'now heres the most text'
    category_id 1
    user_id 1
    image { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
  	caption 'now heres the most text'
  end
  
  factory :category do  	
  	name 'Jane'
  	image { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
  end
end