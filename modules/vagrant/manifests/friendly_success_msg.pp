class vagrant::friendly_success_msg {
  $everythings_fine =
    "\n\n    Everything looks okay. Now get your lazy ass to work! Doubled!\n"

  notify { "everything's fine":
    message => $everythings_fine,
  }
}
