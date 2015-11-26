task :build_frontend do
  cd "frontend" do
    sh "npm install"
    sh "npm run release"
  end
end

Rake::Task["assets:precompile"].enhance(%i(build_frontend))
