#     *********************************************************************
#     *             State Employees Group Benefits Program                *
#     *********************************************************************
#     *                                                                   *
#     * SCRIPT NAME:  a0303192.lpr                                        *
#     *                                                                   * 
#     * DESCRIPTION:  Print the spooled output from impact program        *
#     *               a0303192 (INVOICE LABELS)                           *
#     *                                                                   *
#     * PROGRAM NOTES AND REVISIONS:                                      *
#     * aptvr          03/18/2003 DEV - Initial Version.                  *
#     *********************************************************************
#     * aplap A0905041 05/18/2009 ADD - unix print script                 *
#     *
#     *
#     *
#     *********************************************************************

#==============================================================================
#                             CONSTANT SECTION                                #
#==============================================================================

  BOLD=`tput smso` ; UNBOLD=`tput rmso`
  program_id="x0303192.lpr"
  pgm_desc="     PRINT AGENCY LABELS    "          
  logfile=/work/logs/ap_logs/${program_id}.log
  of1=/ogb/work/a0303192.prt
  prt1="lpr -P"
#==============================================================================
#                              PROCEDURE SECTION                              #
#==============================================================================

        .  printer_select_unix.sh 

#==============================================================================
#                                MAIN SECTION                                 #
#==============================================================================

   clear
   echo "${BOLD}${program_id} ${pgm_desc}${UNBOLD}\n"

   echo "\n\nStart date/time : `date`" | tee -a ${logfile}
   echo "Run by `whoami`" >> ${LOGFILE}
   
  
   while true ; do
     keyin_prt || break
   done    
  
   ${prt1}${printer_run}${copy} ${of1}
   
   echo "\nPrinting ${prt1}${printer_run} ${of1} ..."

  
   echo "\nEnd   date/time : `date`" | tee -a ${logfile}
   echo "\n==================================================== " >> ${logfile} 
