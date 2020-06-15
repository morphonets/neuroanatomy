Currently morphonets projects are deployed to two update sites *Neuroanatomy* and *Neuroanatomy-Unstable*. This repository handles the latter, by releasing daily builds to the imagej server. *-Unstable* sites are not part of the official list (this may change in the future), so they need to be specified manualy:

1. Run the Fiji Updater (*Help › Update...*, the penultimate entry in the *Help ›* menu)

2. Click *Manage update sites*

3. If your are subscribing to the *Neuroanatomy* (or *SciView*) channels, you may want to unselect their checkboxes to avoid conflicts.

4.  Add the following entry to the *Manage update sites* table, by clicking on *Add update site*:
    
    | Name              | URL                                             |
    | :---------------- | :---------------------------------------------- |
    | Neuroanatomy-edge | https://sites.imagej.net/Neuroanatomy-Unstable/ |
    
6. Activate the newly added *Neuroanatomy-edge* checkbox
7. Click *Apply changes* and restart Fiji
