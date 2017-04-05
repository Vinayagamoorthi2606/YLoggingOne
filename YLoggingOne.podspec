Pod::Spec.new do |s|
          #1.
          s.name               = "YLoggingOne"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'YLoggingOne' framework"
          #4.
          s.homepage        = "http://www.yudiz.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "AKanjariya"
          #7.
          s.platform            = :ios, "10.0"
          #8.
          s.source              = { :git => "https://github.com/Vinayagamoorthi2606/YLoggingOne.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "YLoggingOne", "YLoggingOne/**/*.{h,m,swift}"

	  s.resource_bundles = {
    			 'YLoggingOne' => ['YLoggingOne/**/*.{png,jpeg,jpg,storyboard,xib}']
 	  }	

    end