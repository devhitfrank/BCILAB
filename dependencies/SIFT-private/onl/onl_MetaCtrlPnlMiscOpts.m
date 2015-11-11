function g = onl_MetaCtrlPnlMiscOpts(varargin)

g = arg_define(0,varargin,...
        arg({'dispBenchmark','DisplayBenchmarking'},false,[],'Display Benchmarking','type','logical'), ...
        arg({'winLenSec','DataWindowLength'},2,[0 Inf],'EEG chunk size (sec)'), ...
        arg_subtoggle({'dispCSD','DisplayCSD'},[],@vis_csd,'Display Current Density. This only takes effect if the SourceLocalization filter is enabled'), ...
        arg_subtoggle({'doSIFT','RunSIFT'},[], ...
        {...
            arg({'channelSubset','ChannelSubset'},[], [], 'Cell array of channel names to retain.','type','cellstr','shape','row'), ...
            arg({'dispSpectrum','DisplaySpectrum'},false,[],'Display Spectral Density'), ...
            arg_subtoggle({'dispBrainMovie','DisplayBrainMovie'},[],...
            { ...
                arg({'adaptBrainMovieLimits','AdaptBrainMovieLimits'},true,[],'Adapt Color and Edge Scaling of Brainmovie 3D'), ...
                arg_subtoggle({'colorCortexByRoi','ColorCortexByROI'},{},@hlp_getROIVertexColorTable,'Color cortical surface by ROI'), ...
            }, ...
            'Display BrainMovie3D') ...
        },'Enable Source Information Flow Toolbox'), ...
        arg({'streamLSL','StreamLSL'},true,[],'Stream results via LSL'), ...
        arg({'suppress_console_output','SuppressConsoleOutput'},true,[],'Suppress most output to console') ...
        );