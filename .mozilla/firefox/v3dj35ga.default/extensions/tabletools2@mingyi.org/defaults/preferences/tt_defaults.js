pref("extensions.tabletools2@mingyi.org.description", "chrome://tabletools2/locale/tabletools.properties");

pref("extensions.tabletools2.preserveStyle", "row"); // (row, cell) preserves style for row or cell e.g., row is useful when the table highlights rows alternatively. cell is much slower while no preservation's the fastest by far!
pref("extensions.tabletools2.showShortcuts", true); // display shortcut reminder on context menu?
pref("extensions.tabletools2.showSumLabels", true); // display labels for the summary functions?
pref("extensions.tabletools2.copyHeading4Row", true); // copy column heading when copying selected rows
pref("extensions.tabletools2.copyHeading4Cell", true); // copy column heading when copying selected cells
pref("extensions.tabletools2.reportSpeed", false); // give stats about time consumed during sorting and table update/redrawing.
pref("extensions.tabletools2.initSortDir", "asc"); // if true, first sort ascending, 2nd click sort descending
pref("extensions.tabletools2.delayFilterFill", true); // if true, delay filling in the options in dropdown menu until user clicks on it (saves time for large tables)
pref("extensions.tabletools2.useRestart", false); // true to allow using 'ctrl+shift+R' to restart Firefox
pref("extensions.tabletools2.defaultDateStyle", 'us'); // assume 'us' or 'euro'(pean) style of date format when sorting time column
pref("extensions.tabletools2.decimalPoint", '.'); // assume '.' or ','(european) as decimal point

// keyboard shortcuts
pref("extensions.tabletools2.moveUse", true); // use shortcut for move columns/rows
pref("extensions.tabletools2.moveCmdKey", 'ctrl');
pref("extensions.tabletools2.moveAlphaKey", ' ');
pref("extensions.tabletools2.moveMouse", 'right');

pref("extensions.tabletools2.sortUse", true); // use shortcut for sort
pref("extensions.tabletools2.sortCmdKey", 'ctrlalt');
pref("extensions.tabletools2.sortAlphaKey", ' ');
pref("extensions.tabletools2.sortMouse", 'left');

pref("extensions.tabletools2.multisortUse", true); // use shortcut for Multisort
pref("extensions.tabletools2.multisortCmdKey", 'ctrlalt');
pref("extensions.tabletools2.multisortAlphaKey", ' ');
pref("extensions.tabletools2.multisortMouse", 'right');

pref("extensions.tabletools2.numsortUse", true); // use shortcut for sort as number
pref("extensions.tabletools2.numsortCmdKey", 'ctrl');
pref("extensions.tabletools2.numsortAlphaKey", 'V');
pref("extensions.tabletools2.numsortMouse", 'left');

pref("extensions.tabletools2.multinumsortUse", true); // use shortcut for Multisort as number
pref("extensions.tabletools2.multinumsortCmdKey", 'ctrl');
pref("extensions.tabletools2.multinumsortAlphaKey", 'V');
pref("extensions.tabletools2.multinumsortMouse", 'right');

pref("extensions.tabletools2.dropdownUse", true); // use shortcut for Dropdown filters
pref("extensions.tabletools2.dropdownCmdKey", 'ctrlshift');
pref("extensions.tabletools2.dropdownAlphaKey", ' ');
pref("extensions.tabletools2.dropdownMouse", 'left');

pref("extensions.tabletools2.searchUse", true); // use shortcut for Search filters
pref("extensions.tabletools2.searchCmdKey", 'ctrlshift');
pref("extensions.tabletools2.searchAlphaKey", ' ');
pref("extensions.tabletools2.searchMouse", 'right');

pref("extensions.tabletools2.resetddUse", true); // use shortcut for reset dropdown filters
pref("extensions.tabletools2.resetddCmdKey", 'ctrlshift');
pref("extensions.tabletools2.resetddAlphaKey", 'X');
pref("extensions.tabletools2.resetddMouse", 'left');

pref("extensions.tabletools2.resetsUse", true); // use shortcut for reset search filters
pref("extensions.tabletools2.resetsCmdKey", 'ctrlshift');
pref("extensions.tabletools2.resetsAlphaKey", 'X');
pref("extensions.tabletools2.resetsMouse", 'right');

pref("extensions.tabletools2.summaryUse", true); // use shortcut to toggle summary footer
pref("extensions.tabletools2.summaryCmdKey", 'ctrlshift');
pref("extensions.tabletools2.summaryAlphaKey", 'S');
pref("extensions.tabletools2.summaryMouse", 'left');

pref("extensions.tabletools2.chartUse", true); // use shortcut to open chart tab
pref("extensions.tabletools2.chartCmdKey", 'ctrl');
pref("extensions.tabletools2.chartAlphaKey", 'C');
pref("extensions.tabletools2.chartMouse", 'left');

pref("extensions.tabletools2.hidecolumnUse", true); // use shortcut to hide columns
pref("extensions.tabletools2.hidecolumnCmdKey", 'ctrl');
pref("extensions.tabletools2.hidecolumnAlphaKey", 'X');
pref("extensions.tabletools2.hidecolumnMouse", 'left');

pref("extensions.tabletools2.unhidecolumnsUse", true); // use shortcut to unhide columns
pref("extensions.tabletools2.unhidecolumnsCmdKey", 'ctrl');
pref("extensions.tabletools2.unhidecolumnsAlphaKey", 'X');
pref("extensions.tabletools2.unhidecolumnsMouse", 'right');

pref("extensions.tabletools2.tabletopUse", true); // use shortcut to scroll to table top
pref("extensions.tabletools2.tabletopCmdKey", 'ctrlalt');
pref("extensions.tabletools2.tabletopAlphaKey", 'X');
pref("extensions.tabletools2.tabletopMouse", 'left');

pref("extensions.tabletools2.tablefootUse", true); // use shortcut to scroll to table footer
pref("extensions.tabletools2.tablefootCmdKey", 'ctrlalt');
pref("extensions.tabletools2.tablefootAlphaKey", 'X');
pref("extensions.tabletools2.tablefootMouse", 'right');

pref("extensions.tabletools2.cleanhighlightUse", true); // use shortcut to clear highlight on search result cells
pref("extensions.tabletools2.cleanhighlightCmdKey", 'ctrl');
pref("extensions.tabletools2.cleanhighlightAlphaKey", 'C');
pref("extensions.tabletools2.cleanhighlightMouse", 'right');

pref("extensions.tabletools2.copyhtmlUse", true); // use shortcut to copy table as html format
pref("extensions.tabletools2.copyhtmlCmdKey", 'ctrl');
pref("extensions.tabletools2.copyhtmlAlphaKey", 'E');
pref("extensions.tabletools2.copyhtmlMouse", 'left');

pref("extensions.tabletools2.copytabUse", true); // use shortcut to copy table as tab format
pref("extensions.tabletools2.copytabCmdKey", 'ctrlalt');
pref("extensions.tabletools2.copytabAlphaKey", 'C');
pref("extensions.tabletools2.copytabMouse", 'left');

pref("extensions.tabletools2.copytextUse", true); // use shortcut to copy table as justified tab format
pref("extensions.tabletools2.copytextCmdKey", 'ctrlalt');
pref("extensions.tabletools2.copytextAlphaKey", 'C');
pref("extensions.tabletools2.copytextMouse", 'right');

pref("extensions.tabletools2.copytabrowsUse", true); // use shortcut to copy rows as tab format
pref("extensions.tabletools2.copytabrowsCmdKey", 'ctrl');
pref("extensions.tabletools2.copytabrowsAlphaKey", 'Z');
pref("extensions.tabletools2.copytabrowsMouse", 'left');

pref("extensions.tabletools2.copytextrowsUse", true); // use shortcut to copy rows as justified tab format
pref("extensions.tabletools2.copytextrowsCmdKey", 'ctrl');
pref("extensions.tabletools2.copytextrowsAlphaKey", 'Z');
pref("extensions.tabletools2.copytextrowsMouse", 'right');

pref("extensions.tabletools2.copytabcolsUse", true); // use shortcut to copy cols as tab format
pref("extensions.tabletools2.copytabcolsCmdKey", 'ctrlshift');
pref("extensions.tabletools2.copytabcolsAlphaKey", 'Z');
pref("extensions.tabletools2.copytabcolsMouse", 'left');

pref("extensions.tabletools2.copytextcolsUse", true); // use shortcut to copy cols as justified tab format
pref("extensions.tabletools2.copytextcolsCmdKey", 'ctrlshift');
pref("extensions.tabletools2.copytextcolsAlphaKey", 'Z');
pref("extensions.tabletools2.copytextcolsMouse", 'right');

pref("extensions.tabletools2.copytabcellsUse", true); // use shortcut to copy cells as tab format
pref("extensions.tabletools2.copytabcellsCmdKey", 'ctrl');
pref("extensions.tabletools2.copytabcellsAlphaKey", 'Q');
pref("extensions.tabletools2.copytabcellsMouse", 'left');

pref("extensions.tabletools2.copytextcellsUse", true); // use shortcut to copy cells as justified tab format
pref("extensions.tabletools2.copytextcellsCmdKey", 'ctrl');
pref("extensions.tabletools2.copytextcellsAlphaKey", 'Q');
pref("extensions.tabletools2.copytextcellsMouse", 'right');

pref("extensions.tabletools2.sortdownUse", true); // use shortcut to toggle sortdown footer
pref("extensions.tabletools2.sortdownCmdKey", 'ctrlalt');
pref("extensions.tabletools2.sortdownAlphaKey", 'S');
pref("extensions.tabletools2.sortdownMouse", 'left');

pref("extensions.tabletools2.sortupUse", true); // use shortcut to toggle sortup footer
pref("extensions.tabletools2.sortupCmdKey", 'ctrlalt');
pref("extensions.tabletools2.sortupAlphaKey", 'S');
pref("extensions.tabletools2.sortupMouse", 'right');

pref("extensions.tabletools2.clearsortUse", true); // use shortcut to clear the sort range setting
pref("extensions.tabletools2.clearsortCmdKey", 'ctrlshift');
pref("extensions.tabletools2.clearsortAlphaKey", 'S');
pref("extensions.tabletools2.clearsortMouse", 'right');

pref("extensions.tabletools2.addtableUse", true); // use shortcut to add table to combine
pref("extensions.tabletools2.addtableCmdKey", 'ctrlshift');
pref("extensions.tabletools2.addtableAlphaKey", 'F');
pref("extensions.tabletools2.addtableMouse", 'left');

pref("extensions.tabletools2.comparetableUse", true); // use shortcut to add table to compare them later
pref("extensions.tabletools2.comparetableCmdKey", 'ctrlshift');
pref("extensions.tabletools2.comparetableAlphaKey", 'F');
pref("extensions.tabletools2.comparetableMouse", 'right');

pref("extensions.tabletools2.showcombinedUse", true); // use shortcut to show the combined table
pref("extensions.tabletools2.showcombinedCmdKey", 'ctrlalt');
pref("extensions.tabletools2.showcombinedAlphaKey", 'V');
pref("extensions.tabletools2.showcombinedMouse", 'left');

pref("extensions.tabletools2.clearcombinedUse", true); // use shortcut to clear the combined table
pref("extensions.tabletools2.clearcombinedCmdKey", 'ctrlalt');
pref("extensions.tabletools2.clearcombinedAlphaKey", 'V');
pref("extensions.tabletools2.clearcombinedMouse", 'right');