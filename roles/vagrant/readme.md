If 'vagrant up' returns an error along the lines of "Storage volume not found: no storage vol with matching path", you need to manually reresh your storage pools, e.g.:

    [ian@chuck ~]$ sudo virsh pool-list 
     Name                 State      Autostart 
    -------------------------------------------
     default              active     yes       
    
    [ian@chuck ~]$ sudo virsh pool-refresh default
    Pool default refreshed
