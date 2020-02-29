#!/usr/bin/env bats

setup() {
      mkdir test_dir
      touch test_dir/aa.txt
      cd test_dir
      git init
      git add .
      git commit -m 'initial'
      git checkout -b a
      git checkout -b b 
      git checkout -b c 
      git checkout master
}

teardown() {
    cd ..
    #rm -rf test_dir
}

@test "test something." {
    run gitcmd.sh
    #[ "$status" -eq 0 ]
    #[ "${lines[0]}" = "delete branch without master" 
}