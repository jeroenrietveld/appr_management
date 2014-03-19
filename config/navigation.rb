SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :tasks, "Tasks", tasks_path
    primary.item :tasks, "Sprints", tasks_path
    primary.item :tasks, "Hours", tasks_path
  end
end
