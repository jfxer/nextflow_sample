VERSION="1.0"

nextflow.enable.dsl = 2

process ADD_2 {
    script:
    """
   	  echo \$((\$(cat "/home/jfxer/check/1.txt") + 2)) > "/home/jfxer/check/1.txt"
                   
    """
}


process MUL_2 {
    script:
    """
   	 echo \$((\$(cat "/home/jfxer/check/1.txt") * 2)) > "/home/jfxer/check/1.txt"
                   
    """
}


workflow {
    ADD_2()
    MUL_2()
}
