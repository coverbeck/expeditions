workflow myWorkflow {
    call myTask
  meta {
          author : "Mr. Foo"
          email : "foo@foo.com"
          description: "Back to fixed!"
      }
}

task myTask {
    command {
        echo "hello world"
    }
    output {
        String out = read_string(stdout())
    }
}


