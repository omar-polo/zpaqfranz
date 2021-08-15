Suppose you use zfSnap (or whatever) to make snapshots of something
(in this real-world example of /tank/d)

You want to keep (consolidate) forever the snapshots (before purging the older).
In this case ~60 (just the test set).
With  ~2.5GB (3000 files) each it's almost unfeasible.
Let's take 7z as an example (rar, rar, whatever)
The time needed to compress a single snapshot is (on this 8-core Xeon)
~100 seconds each (compressed size = 2096MB, say 2GB)

Therefore
space 60x2 = 120GB
time 60*100 = 100m = 1.5 hour
(of course in the real world you will have to deal with 100x, 200x or more)


With
savetheass 
(temporary name :) 
and zpaqfranz, making something like that

you will get
a 2081172445 bytes (2GB) freezato.zpaq, in 52 seconds.
Yes, 2GB and less than a minute.
Then you can destroy the 60 snapshots

zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-04-26_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-04-26_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-04-27_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-04-27_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-04-28_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-04-28_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-04-29_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-04-29_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-04-30_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-04-30_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-01_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-01_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-02_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-02_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-03_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-03_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-04_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-04_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-05_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-05_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-06_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-06_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-07_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-07_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-08_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-08_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-09_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-09_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-10_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-10_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-11_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-11_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-12_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-12_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-13_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-13_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-14_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-14_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-15_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-15_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-16_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-16_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-17_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-17_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-18_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-18_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-19_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-19_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-20_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-20_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-21_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-21_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-22_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-22_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-23_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-23_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-24_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-24_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-25_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-25_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-26_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-26_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-27_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-27_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-28_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-28_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-29_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-29_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-30_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-30_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-05-31_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-05-31_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-01_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-01_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_13.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_15.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_15.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_17.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_17.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-02_19.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-02_19.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-03_00.01.00--60d/scanner/ -to /snap/scanner/ -timestamp 2021-06-03_00.01.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-03_09.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-03_09.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-03_11.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-03_11.00.00
zpaqfranz a /zroot/spazzatura/freezato.zpaq /tank/d/.zfs/snapshot/2021-06-03_13.00.00--7d/scanner/ -to /snap/scanner/ -timestamp 2021-06-03_13.00.00
