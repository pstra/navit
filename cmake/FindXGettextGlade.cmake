find_package(Gettext)
FIND_PROGRAM(XGETTEXT xgettext)
if (XGETTEXT_FOUND)
	execute_process(COMMAND echo "<test/>" COMMAND xgettext -L glade - RESULT_VARIABLE GETTEXT_RET)
	if ("${GETTEXT_RET}" STREQUAL "0")
		set(XGETTEXT_GLADE TRUE)
	else()
		set(XGETTEXT_GLADE FALSE)
	endif()
endif(XGETTEXT_FOUND)
