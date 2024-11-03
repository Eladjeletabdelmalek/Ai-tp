:-dynamic(task/4).
list_tasks :-
    findall(Description, task(_, Description, _, _), Tasks),
    write('Tasks: '), nl,
    write(Tasks), nl.

% Assigns a task to an assignee.
assign_task(Nbr, Assignee) :-
    retract(task(Nbr, Description, _, Status)),
    assertz(task(Nbr, Description, Assignee, Status)),
    write('Task assigned to '), write(Assignee), nl.

% Creates a new task with an initial status of 0 (incomplete).
create_task(Nbr, Description, Assignee) :-
    assertz(task(Nbr, Description, Assignee, 0)),
    write('Task created: '), write(Description), nl.

% Marks a task as completed.
mark_completed(Nbr) :-
    retract(task(Nbr, Description, Assignee, _)),
    assertz(task(Nbr, Description, Assignee, 1)),
    write('Task marked completed for user: '), write(Assignee), nl.

% Filters tasks based on a condition and displays them.
filtered_tasks_list:-
        findall(task(Nbr, Description, Assignee, Status), task(Nbr, Description, Assignee, Status), Tasks),
    display_tasks(Tasks).
