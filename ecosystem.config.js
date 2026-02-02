module.exports = {
  apps: [
    {
      name: 'nestjs-devops-vm',
      script: 'dist/src/main.js',
      instances: 'max',
      exec_mode: 'cluster',
      env: {
        NODE_ENV: 'production',
        PORT: 3000
      }
    }
  ]
}
