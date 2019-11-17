package org.morphonets.ij;


import org.scijava.ItemIO;
import org.scijava.command.Command;
import org.scijava.log.LogService;
import org.scijava.plugin.Menu;
import org.scijava.plugin.Parameter;
import org.scijava.plugin.Plugin;

import static sc.iview.commands.MenuWeights.EDIT;

@Plugin(type = Command.class, menuRoot = "Plugins", //
        menu = { @Menu(label = "Neuroanatomy", weight = EDIT) })
public class Main implements Command {

    @Parameter
    private LogService logService;

    @Parameter(type = ItemIO.OUTPUT)
    private String infoString = "Neuroanatomy update site";

    @Override
    public void run() {
        logService.warn(infoString);
    }

    static public void main(String[] args) {

    }
}

