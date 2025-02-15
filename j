name: Java CI
run-name: ${{github.actor}} is testing out Github Actions
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up JDK 11
        uses: actions/setup-java@v3
        with:
          java-version: '11'
          distribution: 'temurin'
      - name: Build with Ant
        run: ant -noinput -buildfile build.xml
