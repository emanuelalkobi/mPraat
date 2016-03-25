function tgNew = tgRemoveIntervalLeftBoundary(tg, tierInd, index)
% function tgNew = tgRemoveIntervalLeftBoundary(tg, tierInd, index)
% Odstran� levou hranici intervalu s dan�m indexem z vrstvy (tier) tierInd typu IntervalTier.
% Slou�� se t�m dva intervaly do jednoho (spoj� se i labely). Nelze pou��t
% pro prvn� interval, proto�e to je po��te�n� hranice vrstvy.
% Nap�. m�m intervaly 1-2-3, d�m odstranit levou hranici 2. intervalu.
% V�sledkem budou dva intervaly 12-3. Pokud mi vad� slou�en� label�, mohu
% label je�t� p�ed odstra�ov�n�m hranice nastavit na pr�zdn� �et�zec.
% v1.0, Tom� Bo�il, borilt@gmail.com

if nargin ~= 3
    error('Wrong number of arguments.')
end

% if ~isInt(tierInd)
%     error(['index tier mus� b�t cel� ��slo od 1 v��e [' num2str(tierInd) ']']);
% end
tierInd = tgI(tg, tierInd);

% ntiers = tgGetNumberOfTiers(tg);
% if tierInd < 1 || tierInd>ntiers
%     error(['index tier mimo rozsah, tierInd = ' num2str(tierInd) ', ntiers = ' num2str(ntiers)]);
% end
if ~tgIsIntervalTier(tg, tierInd)
    error(['tier ' num2str(tierInd) ' is not IntervalTier']);
end

nint = tgGetNumberOfIntervals(tg, tierInd);
if index < 1 || index>nint
    error(['index of interval out of range, index = ' num2str(index) ', nint = ' num2str(nint)]);
end

if ~isInt(index)
    error(['index must be integer >= 1 [' num2str(index) ']']);
end

if index == 1
    error(['index cannot be 1 because it is the first boundary of the tier. index = ' num2str(index)]);
end

t1 = tg.tier{tierInd}.T1(index-1);
t2 = tg.tier{tierInd}.T2(index);
lab = [tg.tier{tierInd}.Label{index-1} tg.tier{tierInd}.Label{index}];

tgNew = tg;
for I = index: nint - 1
    tgNew.tier{tierInd}.T1(I) = tgNew.tier{tierInd}.T1(I+1);
    tgNew.tier{tierInd}.T2(I) = tgNew.tier{tierInd}.T2(I+1);
    tgNew.tier{tierInd}.Label{I} = tgNew.tier{tierInd}.Label{I+1};
end

tgNew.tier{tierInd}.T1(end) = [];
tgNew.tier{tierInd}.T2(end) = [];
tgNew.tier{tierInd}.Label(end) = [];

tgNew.tier{tierInd}.T1(index-1) = t1;
tgNew.tier{tierInd}.T2(index-1) = t2;
tgNew.tier{tierInd}.Label{index-1} = lab;
