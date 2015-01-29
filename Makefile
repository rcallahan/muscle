CXXFLAGS = -O3 -msse2 -mfpmath=sse
CPPFLAGS = -D_FILE_OFFSET_BITS=64 -DNDEBUG=1
LDFLAGS = -lm

OBJECTS = aligngivenpath.o aligngivenpathsw.o aligntwomsas.o aligntwoprofs.o \
	aln.o alpha.o anchors.o bittraceback.o blosum62.o blosumla.o clust.o \
	cluster.o clwwt.o color.o cons.o diaglist.o diffobjscore.o diffpaths.o \
	difftrees.o difftreese.o distcalc.o distfunc.o distpwkimura.o domuscle.o \
	dosp.o dpreglist.o drawtree.o edgelist.o enumopts.o enumtostr.o estring.o \
	fasta.o fasta2.o fastclust.o fastdist.o fastdistjones.o fastdistkbit.o \
	fastdistkmer.o fastdistmafft.o fastdistnuc.o fastscorepath2.o finddiags.o \
	finddiagsn.o glbalign.o glbalign352.o glbaligndiag.o glbalignle.o \
	glbalignsimple.o glbalignsp.o glbalignspn.o glbalignss.o glbalndimer.o \
	globals.o globalslinux.o globalsosx.o globalsother.o globalswin32.o \
	gonnet.o henikoffweight.o henikoffweightpb.o html.o hydro.o intmath.o \
	local.o main.o makerootmsa.o makerootmsab.o maketree.o mhack.o mpam200.o \
	msa.o msa2.o msadistkimura.o msf.o muscle.o muscleout.o nucmx.o \
	nwdasimple.o nwdasimple2.o nwdasmall.o nwrec.o nwsmall.o objscore.o \
	objscore2.o objscoreda.o onexception.o options.o outweights.o \
	pam200mafft.o params.o phy.o phy2.o phy3.o phy4.o phyfromclust.o \
	phyfromfile.o physeq.o phytofile.o posgap.o ppscore.o profdb.o profile.o \
	profilefrommsa.o progalign.o progress.o progressivealign.o pwpath.o \
	readmx.o realigndiffs.o realigndiffse.o refine.o refinehoriz.o \
	refinesubfams.o refinetree.o refinetreee.o refinevert.o refinew.o \
	savebest.o scoredist.o scoregaps.o scorehistory.o scorepp.o seq.o \
	seqvect.o setblosumweights.o setgscweights.o setnewhandler.o spfast.o \
	sptest.o stabilize.o subfam.o subfams.o sw.o termgaps.o textfile.o \
	threewaywt.o tomhydro.o traceback.o tracebackopt.o tracebacksw.o \
	treefrommsa.o typetostr.o upgma2.o usage.o validateids.o vtml2.o \
	writescorefile.o

%.o : %.c
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $< -o $@

all: muscle

muscle: $(OBJECTS)
	$(CXX) $(LDFLAGS) -g -o $@ $^
