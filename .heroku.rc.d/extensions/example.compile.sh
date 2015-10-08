# This file is part of heroku-buildpack-skel-example. It is subject to the licence terms in the COPYRIGHT file found in the top-level directory of this distribution and at https://raw.githubusercontent.com/raphaelcohn/heroku-buildpack-skel-example/master/COPYRIGHT. No part of heroku-buildpack-skel-example, including this file, may be copied, modified, propagated, or distributed except according to the terms contained in the COPYRIGHT file.
# Copyright © 2015 The developers of heroku-buildpack-skel-example. See the COPYRIGHT file in the top-level directory of this distribution and at https://raw.githubusercontent.com/raphaelcohn/heroku-buildpack-skel-example/master/COPYRIGHT.


# Source'd (so does not need to be executable) and has access to all heroku_* functions and variables as set by 'compile'
# Namespace _heroku_extension is available for us
core_dependency_requires '*' lrzip
_heroku_extension_example()
{
	heroku_buildpack_compile_actionMessageAndNotes "Running compile extension 'example.compile.sh'; does nothing, but could do quite a lot with build dir '$heroku_buildpack_buildDir', cache dir '$heroku_buildpack_cacheDir', env dir '$$heroku_buildpack_envDir' and other functions"
	
	# Force any missing build dependencies to be installed
	core_dependency_installDependencies
	
	# We can also rely on anything in build.root that's been symlinked
}
_heroku_extension_example
